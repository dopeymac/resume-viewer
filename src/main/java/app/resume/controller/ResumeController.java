package app.resume.controller;


import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import app.resume.dao.ResumeDao;
import app.resume.model.Resume;

/**
 * Controller class to handle http requests
 * 
 * @author Estelle
 *
 */
@Controller
public class ResumeController {

	private static final Logger logger = LoggerFactory.getLogger(ResumeController.class);
	
	@Autowired
	private ResumeDao resumeDao;
	
	/**
	 * Home Page - displays available resumes
	 * @return
	 */
	@RequestMapping(method = RequestMethod.GET, value="/")
	public ModelAndView listResumes() {
		
		ModelAndView modelAndView = new ModelAndView();
		List<Resume> resumes = resumeDao.findAllResumes();
		modelAndView.addObject("resumes", resumes);
		modelAndView.setViewName("home");
		return modelAndView;
	}
	
	/**
	 * Navigates the user to the add resume form
	 * @return
	 */
	@RequestMapping(method = RequestMethod.GET, value="add")
	public ModelAndView createNewResume() {
		
		ModelAndView modelAndView = new ModelAndView();
		Resume resume = new Resume();
		modelAndView.addObject("resume", resume);
		modelAndView.setViewName("add");
		return modelAndView;
	}
	
	/**
	 * Saves the newly created resume
	 * 
	 * @param resume
	 * @return
	 */
	@RequestMapping(method=RequestMethod.POST, value="add")
	public String addResume(@ModelAttribute Resume resume) {
		
		logger.debug("Saving Resume for " + resume.getCandidate() );
		resumeDao.save(resume);
		return "redirect:/";
	}
	
	/**
	 * Returns resume details for a specific resume id
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping(method = RequestMethod.GET, value="view")
	public ModelAndView viewResume(@RequestParam(value="id",required=false) Long id) {
		
		logger.debug("Request to view resume for resume id : " + id);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("view");
		Resume resume = null;
		if(id == null) {
			resume = new Resume();
		} else {
			resume = resumeDao.find(id);
		}
		
		modelAndView.addObject("resume", resume);
		return modelAndView;
	}
	
}
